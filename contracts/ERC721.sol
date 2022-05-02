// SPDX-License-Identifier: UNLICENSED 

pragma solidity ^0.8.0;

import "./IERC721.sol";
import "./SafeMath.sol";

contract ERC721 is IERC721 {

    using SafeMath for uint256;
    
    mapping (address => uint256) private _balances;

    mapping (uint256 => address) private _tokenIdtoOwner;

    // for approval function
    mapping (uint256 => address) private _tokenApprovals;

    mapping (uint256 => string) private _tokenURIs;

    uint256 private _tokenIdcnt = 0;

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) public view override returns (uint256 balance) {
    }

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) public view override returns (address owner) {
        require(valid_tokenId(tokenId), "ERC721.sol: _tokenId is not a valid value");
        return(_tokenIdtoOwner[tokenId]);
    }

    function _transferFrom(address from, address to, uint256 tokenId) private {
    }

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) public override {
    }

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be have been allowed to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId) public override {
    }

   /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {safeTransferFrom} whenever possible.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 tokenId) public override {
    }
 

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) public override {
    }

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool approved) public override {
    }

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) public view override returns (address operator) {
    }

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) public view override returns (bool) {
    }

    /**
     * @dev Mints a token to an address with a tokenURI.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `tokenId` must not exist.
     *
     * @param _owner address of the future owner of the token
     */
    function _mint(address _owner, uint256 _tokenId) private {
        require(valid_addr(_owner), "ERC721.sol: _owner address is not valid");
        require(!valid_tokenId(_tokenId), "ERC721.sol: _tokenId already exists");

        _tokenIdtoOwner[_tokenId] = _owner;
        _balances[_owner]++;
    }

    /**
     * @dev Safely mints `tokenId` and transfers it to `to`.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     *
     * Emits a {Transfer} event.
     */
    function _safeMint(address _owner, string memory _uri) public virtual {
        require(valid_addr(_owner), "ERC721.sol: _owner address is not valid");
        uint256 new_tokenId = _tokenIdcnt;
        _tokenIdcnt++;

        _tokenURIs[new_tokenId] = _uri;

        _mint(_owner, new_tokenId);
    }

    function supportsInterface(bytes4 interfaceId) public view override returns (bool){

    }

    // if the _addr is valid return true 
    function valid_addr(address _addr) private pure returns (bool) {
        return _addr != address(0);
    }

    function valid_tokenId(uint256 _tokenId) private view returns (bool) {
        return _tokenIdtoOwner[_tokenId] != address(0);
    }

}