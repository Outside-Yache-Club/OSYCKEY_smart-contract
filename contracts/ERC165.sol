// SPDX-License-Identifier: MIT

/***************************************************************************
          ___        __         _     __           __   __ ___
        / __ \      / /_  _____(_)___/ /____       \ \ / /  _ \
       / / / /_  __/ __/ / ___/ / __  / __  )       \ / /| |
      / /_/ / /_/ / /_  (__  ) / /_/ / ____/         | | | |_
      \____/\____/\__/ /____/_/\__,_/\____/          |_|  \___/
                                       
****************************************************************************/

pragma solidity ^0.8.0;

import "./IERC165.sol";

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 *
 * Alternatively, {ERC165Storage} provides an easier to use but more expensive implementation.
 */
abstract contract ERC165 is IERC165 {
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId)
        public
        view
        virtual
        override
        returns (bool)
    {
        return interfaceId == type(IERC165).interfaceId;
    }
}
